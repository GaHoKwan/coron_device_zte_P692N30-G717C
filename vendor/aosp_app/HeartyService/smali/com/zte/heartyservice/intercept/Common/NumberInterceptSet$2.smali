.class Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$2;
.super Ljava/lang/Object;
.source "NumberInterceptSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$2;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$2;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->finish()V

    .line 145
    return-void
.end method
