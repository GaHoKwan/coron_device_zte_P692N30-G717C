.class public Lcom/android/launcher2/HideAppsActivity$AppEntry;
.super Lcom/android/launcher2/HideAppsActivity$SizeInfo;
.source "HideAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HideAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field externalSize:J

.field externalSizeStr:Ljava/lang/String;

.field info:Lcom/android/launcher2/ApplicationInfo;

.field internalSize:J

.field internalSizeStr:Ljava/lang/String;

.field size:J

.field sizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 2
    .parameter "appInfo"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/launcher2/HideAppsActivity$SizeInfo;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/launcher2/HideAppsActivity$AppEntry;->info:Lcom/android/launcher2/ApplicationInfo;

    .line 136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HideAppsActivity$AppEntry;->size:J

    .line 137
    return-void
.end method
