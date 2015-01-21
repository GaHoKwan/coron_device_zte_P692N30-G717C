.class public Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;
.super Ljava/lang/Object;
.source "LbsCpAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MnlResultListener"
.end annotation


# instance fields
.field public FAILURE:I

.field public SUCCESS:I

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V
    .locals 1
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;->SUCCESS:I

    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;->FAILURE:I

    .line 556
    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 0
    .parameter "ret"

    .prologue
    .line 559
    return-void
.end method
