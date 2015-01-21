.class Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;
.super Ljava/lang/Object;
.source "ContactDetailFragmentCarousel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    const/4 v1, 0x0

    #calls: Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->changeCurrentPageIndex(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->access$000(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;I)V

    .line 232
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    #calls: Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->access$100(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    .line 233
    return-void
.end method
