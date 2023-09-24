const xsPluginIgTooltip = (itemId) => {
	const render = (value) => {
		let inner = value, outer = value;

		// TODO: custom split value attribute
		if (value.includes('::')) {
			let cellData = value.split('::');
			outer = cellData[0];
			inner = cellData[1];
		}

		let html = `<div><span class="xs-plugin-ig-tooltip-outer">${outer}<span class="xs-plugin-ig-tooltip-inner">${inner}</span></span></div>`;
		return html;
	}

	apex.item.create(itemId, {
		displayValueFor(value) {
			return render(value)
		}
	});
}