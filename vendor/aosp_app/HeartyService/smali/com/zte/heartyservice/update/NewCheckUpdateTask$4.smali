.class Lcom/zte/heartyservice/update/NewCheckUpdateTask$4;
.super Ljava/lang/Object;
.source "NewCheckUpdateTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doInstallApk(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

.field final synthetic val$dir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$4;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    iput-object p2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$4;->val$dir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$4;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    iget-object v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$4;->val$dir:Ljava/io/File;

    #calls: Lcom/zte/heartyservice/update/NewCheckUpdateTask;->updateApk(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->access$400(Lcom/zte/heartyservice/update/NewCheckUpdateTask;Ljava/io/File;)V

    .line 480
    return-void
.end method
