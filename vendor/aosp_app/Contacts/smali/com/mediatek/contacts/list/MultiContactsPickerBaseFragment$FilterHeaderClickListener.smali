.class Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "MultiContactsPickerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;->this$0:Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;-><init>(Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;->this$0:Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;->this$0:Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->access$000(Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V

    .line 50
    return-void
.end method
