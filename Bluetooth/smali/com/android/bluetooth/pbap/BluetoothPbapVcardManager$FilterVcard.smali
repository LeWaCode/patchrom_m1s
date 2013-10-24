.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterVcard"
.end annotation


# instance fields
.field private final ADR_BIT:I

.field private final BDAY_BIT:I

.field private final EMAIL_BIT:I

.field private final FN_BIT:I

.field private final NICKNAME_BIT:I

.field private final NOTES_BIT:I

.field private final ORG_BIT:I

.field private final PHOTO_BIT:I

.field private final TITLE_BIT:I

.field private final URL_BIT:I

.field private adr:Z

.field private bday:Z

.field private email:Z

.field private fn:Z

.field private nickname:Z

.field private notes:Z

.field private org:Z

.field private photo:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

.field private title:Z

.field private url:Z


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 966
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->FN_BIT:I

    .line 971
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    .line 973
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->PHOTO_BIT:I

    .line 975
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    .line 978
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->BDAY_BIT:I

    .line 980
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    .line 982
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->ADR_BIT:I

    .line 984
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    .line 986
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->EMAIL_BIT:I

    .line 988
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    .line 990
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->TITLE_BIT:I

    .line 992
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    .line 994
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->ORG_BIT:I

    .line 996
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    .line 998
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->NOTES_BIT:I

    .line 1000
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    .line 1002
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->URL_BIT:I

    .line 1004
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    .line 1006
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->NICKNAME_BIT:I

    .line 1008
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    .line 967
    return-void
.end method

.method private checkbit(I[B)Z
    .locals 3
    .parameter "attr_bit"
    .parameter "filter"

    .prologue
    .line 1025
    array-length v0, p2

    .line 1026
    .local v0, filterlen:I
    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v1, v2

    aget-byte v1, p2, v1

    rem-int/lit8 v2, p1, 0x8

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 1027
    const/4 v1, 0x0

    .line 1029
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyFilter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "vCard"
    .parameter "vCardType21"

    .prologue
    .line 1037
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, attr:[Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    const-string v2, "FN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1041
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1042
    aget-object v2, v0, v1

    const-string v3, "FN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1041
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    .end local v1           #i:I
    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    if-nez v2, :cond_3

    const-string v2, "BDAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1050
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1051
    aget-object v2, v0, v1

    const-string v3, "BDAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1050
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1057
    .end local v1           #i:I
    :cond_3
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    if-nez v2, :cond_5

    const-string v2, "ADR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1058
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 1059
    aget-object v2, v0, v1

    const-string v3, "ADR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1058
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1065
    .end local v1           #i:I
    :cond_5
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    if-nez v2, :cond_7

    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1066
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 1067
    aget-object v2, v0, v1

    const-string v3, "EMAIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1066
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1073
    .end local v1           #i:I
    :cond_7
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    if-nez v2, :cond_9

    const-string v2, "TITLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1074
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 1075
    aget-object v2, v0, v1

    const-string v3, "TITLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1076
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1074
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1081
    .end local v1           #i:I
    :cond_9
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    if-nez v2, :cond_b

    const-string v2, "ORG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1082
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 1083
    aget-object v2, v0, v1

    const-string v3, "ORG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1082
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1089
    .end local v1           #i:I
    :cond_b
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    if-nez v2, :cond_d

    const-string v2, "NOTE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1090
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 1091
    aget-object v2, v0, v1

    const-string v3, "NOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1090
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1100
    .end local v1           #i:I
    :cond_d
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    if-eqz v2, :cond_e

    if-eqz p2, :cond_10

    :cond_e
    const-string v2, "NICKNAME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1101
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 1102
    aget-object v2, v0, v1

    const-string v3, "NICKNAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1101
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1108
    .end local v1           #i:I
    :cond_10
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    if-nez v2, :cond_12

    const-string v2, "URL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1109
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 1110
    aget-object v2, v0, v1

    const-string v3, "URL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1109
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1115
    .end local v1           #i:I
    :cond_12
    return-object p1
.end method

.method public isPhotoEnabled()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    return v0
.end method

.method public setFilter([B)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 1012
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    .line 1013
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    .line 1014
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    .line 1015
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    .line 1016
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    .line 1017
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    .line 1018
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    .line 1019
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    .line 1020
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    .line 1021
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    .line 1022
    return-void
.end method
