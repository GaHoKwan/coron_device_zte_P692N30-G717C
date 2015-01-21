.class Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$3;
.super Ljava/lang/Object;
.source "AddToBlackListAlertII.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$3;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 209
    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$3;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->addBlackList:Z

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$3;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->addBlackList:Z

    goto :goto_0
.end method
