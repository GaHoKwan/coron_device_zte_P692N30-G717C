.class Lcom/dolby/ds1appUI/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/MainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/MainActivity;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/MainActivity;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/dolby/ds1appUI/MainActivity$4;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$4;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1247
    .local v0, theView:Landroid/widget/ScrollView;
    if-eqz v0, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$4;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #getter for: Lcom/dolby/ds1appUI/MainActivity;->mOriginX:I
    invoke-static {v1}, Lcom/dolby/ds1appUI/MainActivity;->access$500(Lcom/dolby/ds1appUI/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity$4;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #getter for: Lcom/dolby/ds1appUI/MainActivity;->mOriginY:I
    invoke-static {v2}, Lcom/dolby/ds1appUI/MainActivity;->access$600(Lcom/dolby/ds1appUI/MainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1250
    :cond_0
    return-void
.end method
