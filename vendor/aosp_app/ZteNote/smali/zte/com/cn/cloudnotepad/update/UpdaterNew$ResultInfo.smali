.class public Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;
.super Ljava/lang/Object;
.source "UpdaterNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/update/UpdaterNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultInfo"
.end annotation


# instance fields
.field public resultString:Ljava/lang/String;

.field public state:I

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/update/UpdaterNew;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/update/UpdaterNew;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/update/UpdaterNew$ResultInfo;->this$0:Lzte/com/cn/cloudnotepad/update/UpdaterNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
