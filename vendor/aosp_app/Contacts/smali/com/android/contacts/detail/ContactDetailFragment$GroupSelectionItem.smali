.class public final Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupSelectionItem"
.end annotation


# instance fields
.field private mChecked:Z

.field private mCreateGroup:Z

.field private mGroupId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0
    .parameter "groupId"
    .parameter "title"
    .parameter "checked"

    .prologue
    .line 4296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4297
    iput-wide p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mGroupId:J

    .line 4298
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mTitle:Ljava/lang/String;

    .line 4299
    iput-boolean p4, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mChecked:Z

    .line 4300
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "title"
    .parameter "createGroup"

    .prologue
    .line 4302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4303
    iput-boolean p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mCreateGroup:Z

    .line 4304
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mTitle:Ljava/lang/String;

    .line 4305
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .prologue
    .line 4308
    iget-wide v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mGroupId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4320
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 4312
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mChecked:Z

    return v0
.end method

.method public isCreateGroup()Z
    .locals 1

    .prologue
    .line 4324
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mCreateGroup:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 4316
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mChecked:Z

    .line 4317
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4329
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
