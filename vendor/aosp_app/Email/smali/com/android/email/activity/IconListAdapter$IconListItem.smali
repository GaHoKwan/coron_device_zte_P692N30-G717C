.class public Lcom/android/email/activity/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mResource:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "title"
    .parameter "resource"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mResource:I

    .line 105
    iput-object p1, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public getResource()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mResource:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
