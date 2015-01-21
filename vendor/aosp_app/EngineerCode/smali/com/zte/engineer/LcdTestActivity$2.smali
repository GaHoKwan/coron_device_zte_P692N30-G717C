.class Lcom/zte/engineer/LcdTestActivity$2;
.super Ljava/lang/Object;
.source "LcdTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/LcdTestActivity;->showErrorAndFinish(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/LcdTestActivity;


# direct methods
.method constructor <init>(Lcom/zte/engineer/LcdTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/zte/engineer/LcdTestActivity$2;->this$0:Lcom/zte/engineer/LcdTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity$2;->this$0:Lcom/zte/engineer/LcdTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 241
    return-void
.end method
