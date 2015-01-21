.class Lcom/android/contacts/detail/ContactDetailTabCarousel$1;
.super Ljava/lang/Object;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailTabCarousel;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->onLayoutSetTab(I)V

    .line 257
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    #calls: Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->access$100(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    .line 258
    return-void
.end method
