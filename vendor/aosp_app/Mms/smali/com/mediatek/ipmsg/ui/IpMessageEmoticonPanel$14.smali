.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$14;
.super Ljava/lang/Object;
.source "IpMessageEmoticonPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->updateGridView(Landroid/view/View;Landroid/widget/GridView;Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;


# direct methods
.method constructor <init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$14;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 762
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$14;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #calls: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getPreviewIcon(I)I
    invoke-static {v1, p3}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1500(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I

    move-result v0

    .line 763
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 764
    const/4 v1, 0x0

    .line 768
    :goto_0
    return v1

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$14;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1300(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->setEmoticon(I)V

    .line 767
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$14;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1300(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->showWindow()V

    .line 768
    const/4 v1, 0x1

    goto :goto_0
.end method
