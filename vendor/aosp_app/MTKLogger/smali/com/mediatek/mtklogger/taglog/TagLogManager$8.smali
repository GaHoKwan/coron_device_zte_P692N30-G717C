.class Lcom/mediatek/mtklogger/taglog/TagLogManager$8;
.super Ljava/lang/Object;
.source "TagLogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$8;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1059
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1060
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$8;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$900(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    .line 1061
    return-void
.end method
