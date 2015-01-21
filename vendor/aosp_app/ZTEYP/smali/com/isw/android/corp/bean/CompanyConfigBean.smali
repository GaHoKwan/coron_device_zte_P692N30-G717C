.class public Lcom/isw/android/corp/bean/CompanyConfigBean;
.super Ljava/lang/Object;
.source "CompanyConfigBean.java"


# instance fields
.field public length:J

.field public ts:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyConfigBean;->ts:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isw/android/corp/bean/CompanyConfigBean;->length:J

    .line 38
    return-void
.end method
