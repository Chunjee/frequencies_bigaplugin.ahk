class frequencies_bigaplugin {
	frequencies(param_array) {
		if (!isObject(param_array)) {
			this._internal_ThrowException()
		}

		; prepare
		if (this.isStringLike(param_array)) {
			param_array := strSplit(param_array, "")
		}

		; create
		l_array := []
		for key, value in param_array {
			if (l_array[value] == "") {
				l_array[value] := 0
			}
			l_array[value] += 1
		}
		return l_array
	}
}

biga.base := frequencies_bigaplugin
