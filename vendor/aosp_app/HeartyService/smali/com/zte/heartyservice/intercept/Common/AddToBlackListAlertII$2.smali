.class Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$2;
.super Ljava/lang/Object;
.source "AddToBlackListAlertII.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 195
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$2;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$2;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->finish()V

    .line 199
    return-void
.end method
