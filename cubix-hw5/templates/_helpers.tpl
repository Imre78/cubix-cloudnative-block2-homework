{{- define "cubix-hw5.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cubix-hw5.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cubix-hw5.frontappName" -}}
{{- printf "%s-frontapp" (include "cubix-hw5.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cubix-hw5.backappName" -}}
{{- printf "%s-backapp" (include "cubix-hw5.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
