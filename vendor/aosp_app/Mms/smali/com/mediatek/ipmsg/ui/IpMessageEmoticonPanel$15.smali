.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$15;
.super Ljava/lang/Object;
.source "IpMessageEmoticonPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 772
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$15;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 777
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$15;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1300(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->dissWindow()V

    .line 783
    :cond_0
    :goto_0
    return v2

    .line 779
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$15;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1300(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ipmsg/ui/EmoticonPreview;->dissWindow()V

    goto :goto_0
.end method
