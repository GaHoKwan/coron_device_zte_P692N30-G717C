.class Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader$1;
.super Ljava/lang/Object;
.source "VipListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader$1;->this$1:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader$1;->this$1:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    iget-object v0, v0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 312
    return-void
.end method
