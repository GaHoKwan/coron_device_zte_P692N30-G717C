.class public Lcom/isw/android/corp/bean/CompanyBgBean;
.super Ljava/lang/Object;
.source "CompanyBgBean.java"


# instance fields
.field public idi:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ids:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ts:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyBgBean;->ts:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyBgBean;->ids:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyBgBean;->idi:Ljava/util/Vector;

    .line 40
    return-void
.end method
