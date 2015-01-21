.class public final Lcom/android/mail/providers/UIProvider$ConversationCursorCommand;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationCursorCommand"
.end annotation


# static fields
.field public static final COMMAND_KEY_ALLOW_NETWORK_ACCESS:Ljava/lang/String; = "allowNetwork"

.field public static final COMMAND_KEY_SET_VISIBILITY:Ljava/lang/String; = "setVisibility"

.field public static final COMMAND_RESPONSE_FAILED:Ljava/lang/String; = "failed"

.field public static final COMMAND_RESPONSE_OK:Ljava/lang/String; = "ok"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
