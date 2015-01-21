.class public Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
.super Ljava/lang/Object;
.source "UpdaterNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/update/UpdaterNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateApkInfo"
.end annotation


# instance fields
.field public feature:Ljava/lang/String;

.field public retState:I

.field public size:Ljava/lang/Long;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/update/UpdaterNew;

.field public url:Ljava/lang/String;

.field public versionCode:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/update/UpdaterNew;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->this$0:Lzte/com/cn/cloudnotepad/update/UpdaterNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
