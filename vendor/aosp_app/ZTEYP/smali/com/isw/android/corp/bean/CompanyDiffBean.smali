.class public Lcom/isw/android/corp/bean/CompanyDiffBean;
.super Ljava/lang/Object;
.source "CompanyDiffBean.java"


# instance fields
.field public dotservice:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sAdd:Ljava/lang/String;

.field public sDel:Ljava/lang/String;

.field public vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyDiffBean;->name:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyDiffBean;->sAdd:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyDiffBean;->sDel:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyDiffBean;->icon:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyDiffBean;->info:Ljava/lang/String;

    .line 12
    const-string v0, "1"

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyDiffBean;->vip:Ljava/lang/String;

    .line 13
    const-string v0, "0"

    iput-object v0, p0, Lcom/isw/android/corp/bean/CompanyDiffBean;->dotservice:Ljava/lang/String;

    .line 16
    return-void
.end method
