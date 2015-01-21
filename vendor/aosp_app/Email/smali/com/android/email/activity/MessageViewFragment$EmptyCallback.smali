.class public final Lcom/android/email/activity/MessageViewFragment$EmptyCallback;
.super Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeMessageGone()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onCalendarLinkClicked(J)V
    .locals 0
    .parameter "epochEventStartTime"

    .prologue
    .line 134
    return-void
.end method

.method public onCheckIsEasRemoteMessage()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public onForward()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onGetQueryTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageSetUnread()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onReply()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onReplyAll()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onRespondedToInvite(I)V
    .locals 0
    .parameter "response"

    .prologue
    .line 136
    return-void
.end method
