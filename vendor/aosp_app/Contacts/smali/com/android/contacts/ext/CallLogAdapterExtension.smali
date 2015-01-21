.class public Lcom/android/contacts/ext/CallLogAdapterExtension;
.super Ljava/lang/Object;
.source "CallLogAdapterExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/android/contacts/calllog/ContactInfo;)V
    .locals 0
    .parameter "view"
    .parameter "c"
    .parameter "count"
    .parameter "contactInfo"

    .prologue
    .line 51
    return-void
.end method

.method public setListItemViewTag(Landroid/view/View;Lcom/android/contacts/calllog/ContactInfo;Landroid/database/Cursor;Landroid/content/Intent;)Z
    .locals 1
    .parameter "itemView"
    .parameter "contactInfo"
    .parameter "c"
    .parameter "callDetailIntent"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
