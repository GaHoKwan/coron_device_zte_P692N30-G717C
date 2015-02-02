.class Lcom/dolby/ds1appUI/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/ds1appUI/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/MainActivity;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/MainActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dolby/ds1appUI/MainActivity$2;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolby/ds1appUI/MainActivity$2;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #calls: Lcom/dolby/ds1appUI/MainActivity;->doInitMainUI()V
    invoke-static {v0}, Lcom/dolby/ds1appUI/MainActivity;->access$200(Lcom/dolby/ds1appUI/MainActivity;)V

    .line 169
    return-void
.end method
