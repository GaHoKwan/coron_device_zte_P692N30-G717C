.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
.super Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
.source "IpMessageEmoticonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargeEmoticonAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;


# direct methods
.method public constructor <init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;[I)V
    .locals 0
    .parameter
    .parameter "iconArray"

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    .line 1062
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;-><init>(Lcom/android/mms/ui/EmoticonPanel;[I)V

    .line 1063
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1067
    if-nez p2, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1600(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1069
    invoke-virtual {p2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1073
    :goto_0
    const v2, 0x7f0f0006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1075
    .local v1, img:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1600(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;->mIconArr:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1076
    .local v0, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    return-object p2

    .line 1071
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    .end local v1           #img:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/View;

    .restart local p2
    goto :goto_0
.end method
