.class Lcom/zte/heartyservice/privacy/FilesActivity$4;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;->setCurState(Lcom/zte/heartyservice/privacy/FilesActivity$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$4;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$4;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->onBackPressed()V

    .line 285
    return-void
.end method
