.class public Lcom/isw/android/corp/bean/UserServiceStatusBean;
.super Ljava/lang/Object;
.source "UserServiceStatusBean.java"


# instance fields
.field public authMethod:Ljava/lang/String;

.field public customization:Ljava/lang/String;

.field public subscription:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/UserServiceStatusBean;->uid:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/UserServiceStatusBean;->subscription:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/UserServiceStatusBean;->customization:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/UserServiceStatusBean;->authMethod:Ljava/lang/String;

    .line 30
    return-void
.end method
