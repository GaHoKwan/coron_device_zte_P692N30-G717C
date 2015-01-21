.class Lcom/zte/handservice/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/handservice/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/handservice/MainActivity;


# direct methods
.method constructor <init>(Lcom/zte/handservice/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zte/handservice/MainActivity$1;->this$0:Lcom/zte/handservice/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zte/handservice/MainActivity$1;->this$0:Lcom/zte/handservice/MainActivity;

    invoke-virtual {v0}, Lcom/zte/handservice/MainActivity;->openOptionsMenu()V

    .line 144
    return-void
.end method
