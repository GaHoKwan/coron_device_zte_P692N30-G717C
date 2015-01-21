.class public final enum Lcom/iflytek/speech/SpeechUser$Login_State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/SpeechUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Login_State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/speech/SpeechUser$Login_State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Logined:Lcom/iflytek/speech/SpeechUser$Login_State;

.field public static final enum Unlogin:Lcom/iflytek/speech/SpeechUser$Login_State;

.field private static final synthetic a:[Lcom/iflytek/speech/SpeechUser$Login_State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/speech/SpeechUser$Login_State;

    const-string v1, "Logined"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechUser$Login_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/speech/SpeechUser$Login_State;->Logined:Lcom/iflytek/speech/SpeechUser$Login_State;

    new-instance v0, Lcom/iflytek/speech/SpeechUser$Login_State;

    const-string v1, "Unlogin"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/speech/SpeechUser$Login_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/speech/SpeechUser$Login_State;->Unlogin:Lcom/iflytek/speech/SpeechUser$Login_State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/speech/SpeechUser$Login_State;

    sget-object v1, Lcom/iflytek/speech/SpeechUser$Login_State;->Logined:Lcom/iflytek/speech/SpeechUser$Login_State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/speech/SpeechUser$Login_State;->Unlogin:Lcom/iflytek/speech/SpeechUser$Login_State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/speech/SpeechUser$Login_State;->a:[Lcom/iflytek/speech/SpeechUser$Login_State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/speech/SpeechUser$Login_State;
    .locals 1

    const-class v0, Lcom/iflytek/speech/SpeechUser$Login_State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/SpeechUser$Login_State;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/speech/SpeechUser$Login_State;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/iflytek/speech/SpeechUser$Login_State;->a:[Lcom/iflytek/speech/SpeechUser$Login_State;

    array-length v1, v0

    new-array v2, v1, [Lcom/iflytek/speech/SpeechUser$Login_State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
