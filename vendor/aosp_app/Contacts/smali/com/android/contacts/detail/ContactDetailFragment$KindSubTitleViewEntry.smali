.class Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KindSubTitleViewEntry"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "titleText"

    .prologue
    .line 1591
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1592
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 1593
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method
