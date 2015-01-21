.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$11;
.super Ljava/lang/Object;
.source "IpMessageEmoticonPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addNormalPage(I)V
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
    .line 667
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$11;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

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
    .line 671
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$11;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #calls: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getEmoticonName(I)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1200(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$11;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    invoke-static {v1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$000(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;->doAction(ILjava/lang/String;)V

    goto :goto_0
.end method
