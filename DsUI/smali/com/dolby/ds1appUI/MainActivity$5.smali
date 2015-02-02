.class Lcom/dolby/ds1appUI/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/MainActivity;->profilePresetsAreAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/MainActivity;

.field final synthetic val$profile:I


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/MainActivity;I)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/dolby/ds1appUI/MainActivity$5;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    iput p2, p0, Lcom/dolby/ds1appUI/MainActivity$5;->val$profile:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$5;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1400
    .local v0, theView:Landroid/widget/ScrollView;
    if-eqz v0, :cond_0

    .line 1401
    const/4 v1, 0x0

    iget v2, p0, Lcom/dolby/ds1appUI/MainActivity$5;->val$profile:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1403
    :cond_0
    return-void
.end method
