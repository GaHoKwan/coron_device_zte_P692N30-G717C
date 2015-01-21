.class Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->showRestoreAllDialogByAddress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    return-void
.end method
