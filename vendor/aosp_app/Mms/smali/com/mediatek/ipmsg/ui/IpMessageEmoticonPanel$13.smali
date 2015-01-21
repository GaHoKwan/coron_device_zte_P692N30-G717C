.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$13;
.super Ljava/lang/Object;
.source "IpMessageEmoticonPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 748
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$13;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 752
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$13;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1300(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$13;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #calls: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getLargeName(I)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1400(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$13;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$000(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;->doAction(ILjava/lang/String;)V

    .line 756
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method
