.class Lcom/zte/update/ui/PopoupActivity$5;
.super Ljava/lang/Object;
.source "PopoupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/PopoupActivity;->diplayMessageDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/PopoupActivity;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/PopoupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/zte/update/ui/PopoupActivity$5;->this$0:Lcom/zte/update/ui/PopoupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zte/update/ui/PopoupActivity$5;->this$0:Lcom/zte/update/ui/PopoupActivity;

    #calls: Lcom/zte/update/ui/PopoupActivity;->displayMessage()V
    invoke-static {v0}, Lcom/zte/update/ui/PopoupActivity;->access$100(Lcom/zte/update/ui/PopoupActivity;)V

    .line 262
    return-void
.end method
