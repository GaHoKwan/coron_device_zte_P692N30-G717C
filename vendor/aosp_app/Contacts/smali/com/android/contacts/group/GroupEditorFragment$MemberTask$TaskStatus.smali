.class final enum Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;
.super Ljava/lang/Enum;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment$MemberTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

.field public static final enum CANCELED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

.field public static final enum FINISHED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

.field public static final enum NEW:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

.field public static final enum RUNNING:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1665
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->NEW:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->RUNNING:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->FINISHED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->CANCELED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    .line 1664
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->NEW:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->RUNNING:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->FINISHED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->CANCELED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->$VALUES:[Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

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
    .line 1664
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 1664
    const-class v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;
    .locals 1

    .prologue
    .line 1664
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->$VALUES:[Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    return-object v0
.end method
