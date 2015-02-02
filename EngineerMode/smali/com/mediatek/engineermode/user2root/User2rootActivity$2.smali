.class Lcom/mediatek/engineermode/user2root/User2rootActivity$2;
.super Ljava/lang/Object;
.source "User2rootActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/user2root/User2rootActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/user2root/User2rootActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity$2;->this$0:Lcom/mediatek/engineermode/user2root/User2rootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 109
    const-string v1, "ro.build.version.sdk"

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, sdkVersion:I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity$2;->this$0:Lcom/mediatek/engineermode/user2root/User2rootActivity;

    #calls: Lcom/mediatek/engineermode/user2root/User2rootActivity;->toUser_ics()V
    invoke-static {v1}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->access$200(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/user2root/User2rootActivity$2;->this$0:Lcom/mediatek/engineermode/user2root/User2rootActivity;

    #calls: Lcom/mediatek/engineermode/user2root/User2rootActivity;->toUser_gb()V
    invoke-static {v1}, Lcom/mediatek/engineermode/user2root/User2rootActivity;->access$300(Lcom/mediatek/engineermode/user2root/User2rootActivity;)V

    goto :goto_0
.end method
