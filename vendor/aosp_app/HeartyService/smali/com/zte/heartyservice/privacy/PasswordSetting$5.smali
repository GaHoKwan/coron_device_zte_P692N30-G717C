.class Lcom/zte/heartyservice/privacy/PasswordSetting$5;
.super Ljava/lang/Object;
.source "PasswordSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;->eventInit()V
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
    .line 1592
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$5;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 1595
    invoke-static {p2}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setPatternVibrate(Z)V

    .line 1596
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$5;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 1597
    return-void
.end method
