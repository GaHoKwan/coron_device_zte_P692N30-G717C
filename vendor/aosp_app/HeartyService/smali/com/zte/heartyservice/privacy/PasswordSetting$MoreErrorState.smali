.class Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$State;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreErrorState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mMaintView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mMoreErrorView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$900(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method
