.class Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/utils/PhoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TeleListener"
.end annotation


# instance fields
.field public cfInfo:Z

.field final synthetic this$0:Lcom/zte/retrieve/utils/PhoneInfo;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/utils/PhoneInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;->this$0:Lcom/zte/retrieve/utils/PhoneInfo;

    .line 185
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 187
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .parameter "cfi"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    iput-boolean p1, p0, Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;->cfInfo:Z

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string v1, "callForwardSetted"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;->this$0:Lcom/zte/retrieve/utils/PhoneInfo;

    #getter for: Lcom/zte/retrieve/utils/PhoneInfo;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/retrieve/utils/PhoneInfo;->access$0(Lcom/zte/retrieve/utils/PhoneInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v1, "callForwardOffset"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/zte/retrieve/utils/PhoneInfo$TeleListener;->this$0:Lcom/zte/retrieve/utils/PhoneInfo;

    #getter for: Lcom/zte/retrieve/utils/PhoneInfo;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/retrieve/utils/PhoneInfo;->access$0(Lcom/zte/retrieve/utils/PhoneInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
