.class public final enum Lcom/mediatek/security/ui/ActionBarAdapter$TabState;
.super Ljava/lang/Enum;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/security/ui/ActionBarAdapter$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

.field public static final enum APPS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

.field public static final enum PERMISSIONS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    const-string v1, "PERMISSIONS_INFO"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->PERMISSIONS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    new-instance v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    const-string v1, "APPS_INFO"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->APPS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    sget-object v1, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->PERMISSIONS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->APPS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->$VALUES:[Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/mediatek/security/ui/ActionBarAdapter$TabState;
    .locals 3
    .parameter "value"

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->PERMISSIONS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 91
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->PERMISSIONS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    .line 94
    :goto_0
    return-object v0

    .line 93
    :cond_0
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->APPS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 94
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->APPS_INFO:Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/security/ui/ActionBarAdapter$TabState;
    .locals 1
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/security/ui/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/mediatek/security/ui/ActionBarAdapter$TabState;->$VALUES:[Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/security/ui/ActionBarAdapter$TabState;

    return-object v0
.end method
