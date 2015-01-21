.class Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v2}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1900(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V

    .line 234
    return-void
.end method
