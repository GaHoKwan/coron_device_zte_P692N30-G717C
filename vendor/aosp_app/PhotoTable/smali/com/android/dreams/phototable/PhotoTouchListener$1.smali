.class Lcom/android/dreams/phototable/PhotoTouchListener$1;
.super Ljava/lang/Object;
.source "PhotoTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTouchListener;->onFling(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTouchListener;

.field final synthetic val$photo:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTouchListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTouchListener$1;->this$0:Lcom/android/dreams/phototable/PhotoTouchListener;

    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTouchListener$1;->val$photo:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener$1;->this$0:Lcom/android/dreams/phototable/PhotoTouchListener;

    #getter for: Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTouchListener;->access$000(Lcom/android/dreams/phototable/PhotoTouchListener;)Lcom/android/dreams/phototable/PhotoTable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTouchListener$1;->val$photo:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V

    .line 144
    return-void
.end method
