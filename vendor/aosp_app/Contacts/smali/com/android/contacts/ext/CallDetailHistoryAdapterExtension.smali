.class public Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapterExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailHistoryAdapterExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 17
    const/4 v0, -0x1

    return v0
.end method

.method public getViewPost(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 29
    return-object p2
.end method

.method public getViewPre(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTypeCount(I)I
    .locals 0
    .parameter "currentViewTypeCount"

    .prologue
    .line 21
    return p1
.end method

.method public init(Landroid/content/Context;[Lcom/android/contacts/PhoneCallDetails;)V
    .locals 0
    .parameter "context"
    .parameter "phoneCallDetails"

    .prologue
    .line 14
    return-void
.end method
