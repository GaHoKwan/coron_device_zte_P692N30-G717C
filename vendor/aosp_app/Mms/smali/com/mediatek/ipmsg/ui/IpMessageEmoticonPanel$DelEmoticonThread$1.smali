.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread$1;
.super Ljava/lang/Object;
.source "IpMessageEmoticonPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;


# direct methods
.method constructor <init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread$1;->this$1:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1136
    const-string v0, "Mms/IpMessageEmoticonPanel"

    const-string v1, "Quick delete emoticon."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread$1;->this$1:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    iget-object v0, v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$000(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;->doAction(ILjava/lang/String;)V

    .line 1138
    return-void
.end method
