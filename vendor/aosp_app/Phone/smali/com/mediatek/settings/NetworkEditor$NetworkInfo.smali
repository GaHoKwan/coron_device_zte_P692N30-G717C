.class Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInfo"
.end annotation


# instance fields
.field private mNetWorkMode:Ljava/lang/String;

.field private mNetworkId:Ljava/lang/String;

.field private mPriority:I

.field final synthetic this$0:Lcom/mediatek/settings/NetworkEditor;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/NetworkEditor;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 487
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetworkId:Ljava/lang/String;

    .line 489
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    .line 490
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetWorkMode:Ljava/lang/String;

    .line 491
    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/settings/NetworkEditor$NetworkInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 482
    iget v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    return v0
.end method


# virtual methods
.method public getNetWorkMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetWorkMode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    return v0
.end method

.method public setNetWorkMode(Ljava/lang/String;)V
    .locals 0
    .parameter "mNetWorkMode"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetWorkMode:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setNetworkId(Ljava/lang/String;)V
    .locals 0
    .parameter "mNetworkId"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mNetworkId:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "mPriority"

    .prologue
    .line 506
    iput p1, p0, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I

    .line 507
    return-void
.end method
