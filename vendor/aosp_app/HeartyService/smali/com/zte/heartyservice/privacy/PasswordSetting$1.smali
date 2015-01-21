.class Lcom/zte/heartyservice/privacy/PasswordSetting$1;
.super Landroid/os/Handler;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$1;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$1;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
