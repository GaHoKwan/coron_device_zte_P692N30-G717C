.class public Lcom/isw/android/corp/bean/CompanyIndexBean;
.super Ljava/lang/Object;
.source "CompanyIndexBean.java"


# instance fields
.field public begin:I

.field public len:I

.field public phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyIndexBean;->phone:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/isw/android/corp/bean/CompanyIndexBean;->begin:I

    .line 35
    iput v1, p0, Lcom/isw/android/corp/bean/CompanyIndexBean;->len:I

    .line 39
    return-void
.end method
