.class public Lcom/isw/android/corp/bean/LocInfoBean;
.super Ljava/lang/Object;
.source "LocInfoBean.java"


# instance fields
.field public city:Ljava/lang/String;

.field public operator:Ljava/lang/String;

.field public province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/LocInfoBean;->city:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/LocInfoBean;->operator:Ljava/lang/String;

    .line 10
    return-void
.end method
