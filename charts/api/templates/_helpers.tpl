{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at  63 | trimSuffix "-" chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "ngrok.fullname" -}}
{{- printf "%s-%s" .Release.Name "ngrok" | trunc  63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at  63 | trimSuffix "-" chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "okta.fullname" -}}
{{- printf "%s-%s" .Release.Name "okta" | trunc  63 | trimSuffix "-" -}}
{{- end -}}