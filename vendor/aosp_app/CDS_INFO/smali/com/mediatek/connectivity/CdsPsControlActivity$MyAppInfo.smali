.class Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
.super Ljava/lang/Object;
.source "CdsPsControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsPsControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAppInfo"
.end annotation


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/connectivity/CdsPsControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;->this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/connectivity/CdsPsControlActivity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "info"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;->this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;->mPackageName:Ljava/lang/String;

    .line 380
    iput-object p3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 381
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
