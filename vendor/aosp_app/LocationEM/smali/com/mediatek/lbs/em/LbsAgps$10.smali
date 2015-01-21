.class Lcom/mediatek/lbs/em/LbsAgps$10;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$10;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 886
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 887
    .local v0, index:I
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$10;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->handleNiDialogTest(I)V
    invoke-static {v1, v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$800(Lcom/mediatek/lbs/em/LbsAgps;I)V

    .line 888
    const/4 v1, 0x1

    return v1
.end method
