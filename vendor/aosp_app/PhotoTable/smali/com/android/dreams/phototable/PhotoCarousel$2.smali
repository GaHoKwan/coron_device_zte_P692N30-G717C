.class Lcom/android/dreams/phototable/PhotoCarousel$2;
.super Ljava/lang/Object;
.source "PhotoCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoCarousel;->flip(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoCarousel;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoCarousel$2;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$2;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #calls: Lcom/android/dreams/phototable/PhotoCarousel;->maybeLoadMore()V
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoCarousel;->access$000(Lcom/android/dreams/phototable/PhotoCarousel;)V

    .line 273
    return-void
.end method
