.class Lcom/zte/heartyservice/update/NewCheckUpdateTask$2;
.super Ljava/lang/Object;
.source "NewCheckUpdateTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doNewVersionUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$2;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 406
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 407
    iget-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$2;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    #calls: Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doNewVersionUpdate()V
    invoke-static {v0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->access$300(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)V

    .line 408
    return-void
.end method
